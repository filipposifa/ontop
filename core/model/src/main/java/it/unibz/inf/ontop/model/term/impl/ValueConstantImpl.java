package it.unibz.inf.ontop.model.term.impl;

/*
 * #%L
 * ontop-obdalib-core
 * %%
 * Copyright (C) 2009 - 2014 Free University of Bozen-Bolzano
 * %%
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 *      http://www.apache.org/licenses/LICENSE-2.0
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 * #L%
 */

import it.unibz.inf.ontop.model.term.ValueConstant;
import it.unibz.inf.ontop.model.term.Variable;
import it.unibz.inf.ontop.model.type.TermType;

import javax.annotation.Nonnull;
import java.util.stream.Stream;

import static it.unibz.inf.ontop.model.OntopModelSingletons.TYPE_FACTORY;

public class ValueConstantImpl implements ValueConstant {

	private static final long serialVersionUID = 8031338451909170400L;

	private final String value;
	private final String language;
	private final String string;
	private final TermType termType;

	/**
	 * The default constructor.
	 * 
	 * @param value
	 *            the constant value.
	 * @param type
	 *            the constant type.
	 */
	protected ValueConstantImpl(@Nonnull String value, @Nonnull TermType type) {
		this.value = value;
		this.language = null;
		this.termType = type;
		this.string = "\"" + value + "\"";
	}

	protected ValueConstantImpl(@Nonnull String value, @Nonnull String language) {
		this.value = value;
		this.language = language;
		this.termType = TYPE_FACTORY.getLangTermType(language);
		this.string = "\"" + value + "@" + language + "\"";
	}
	
	@Override
	public boolean equals(Object obj) {
		if (obj == null || !(obj instanceof ValueConstantImpl)) {
			return false;
		}
		ValueConstantImpl value2 = (ValueConstantImpl) obj;
		return this.hashCode() == value2.hashCode();
	}

	@Override
	public int hashCode() {		
		return string.hashCode();
	}

	@Override
	public ValueConstant clone() {
		return this;
	}

	@Override
	public boolean isGround() {
		return true;
	}

	@Override
	public Stream<Variable> getVariableStream() {
		return Stream.of();
	}

	@Override
	public String getValue() {
		return value;
	}

	@Override
	public String getLanguage() {
		return language;
	}

	@Override
	public TermType getType() {
		return termType;
	}

	@Override
	public String toString() {
		return string;
	}
}
