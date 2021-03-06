package com.dogiant.cms.ticket.util;

import org.springframework.stereotype.Service;

@Service("keyGenerator")
public final class DefaultUniqueTicketIdGenerator implements
		UniqueTicketIdGenerator {

	/** The numeric generator to generate the static part of the id. */
	private final NumericGenerator numericGenerator;

	/** The RandomStringGenerator to generate the secure random part of the id. */
	private final RandomStringGenerator randomStringGenerator;

	/**
	 * Optional suffix to ensure uniqueness across JVMs by specifying unique
	 * values.
	 */
	private final String suffix;

	/**
	 * Creates an instance of DefaultUniqueTicketIdGenerator with default values
	 * including a {@link DefaultLongNumericGenerator} with a starting value of
	 * 1.
	 */
	public DefaultUniqueTicketIdGenerator() {
		this(null);
	}

	/**
	 * Creates an instance of DefaultUniqueTicketIdGenerator with a specified
	 * maximum length for the random portion.
	 * 
	 * @param maxLength
	 *            the maximum length of the random string used to generate the
	 *            id.
	 */
	public DefaultUniqueTicketIdGenerator(final int maxLength) {
		this(maxLength, null);
	}

	/**
	 * Creates an instance of DefaultUniqueTicketIdGenerator with default values
	 * including a {@link DefaultLongNumericGenerator} with a starting value of
	 * 1.
	 * 
	 * @param suffix
	 *            the value to append at the end of the unique id to ensure
	 *            uniqueness across JVMs.
	 */
	public DefaultUniqueTicketIdGenerator(final String suffix) {
		this.numericGenerator = new DefaultLongNumericGenerator(1);
		this.randomStringGenerator = new DefaultRandomStringGenerator();

		if (suffix != null) {
			this.suffix = "-" + suffix;
		} else {
			this.suffix = null;
		}
	}

	/**
	 * Creates an instance of DefaultUniqueTicketIdGenerator with a specified
	 * maximum length for the random portion.
	 * 
	 * @param maxLength
	 *            the maximum length of the random string used to generate the
	 *            id.
	 * @param suffix
	 *            the value to append at the end of the unique id to ensure
	 *            uniqueness across JVMs.
	 */
	public DefaultUniqueTicketIdGenerator(final int maxLength,
			final String suffix) {
		this.numericGenerator = new DefaultLongNumericGenerator(1000);
		this.randomStringGenerator = new DefaultRandomStringGenerator(maxLength);

		if (suffix != null) {
			this.suffix = "-" + suffix;
		} else {
			this.suffix = null;
		}
	}

	@Override
	public String getNewTicketId(final String prefix) {
		final String number = this.numericGenerator.getNextNumberAsString();
		final StringBuilder buffer = new StringBuilder(prefix.length() + 2
				+ (this.suffix != null ? this.suffix.length() : 0)
				+ this.randomStringGenerator.getMaxLength() + number.length());

		buffer.append(prefix);
		buffer.append("-");
		buffer.append(number);
		buffer.append("-");
		buffer.append(this.randomStringGenerator.getNewString());

		if (this.suffix != null) {
			buffer.append(this.suffix);
		}

		return buffer.toString();
	}

	public static void main(String[] args) throws Exception {
		DefaultUniqueTicketIdGenerator t = new DefaultUniqueTicketIdGenerator(
				35);
		for (int i = 0; i < 1000; i++) {
			String a = t.getNewTicketId("TGT");
			System.out.println(a);
		}
	}
}
