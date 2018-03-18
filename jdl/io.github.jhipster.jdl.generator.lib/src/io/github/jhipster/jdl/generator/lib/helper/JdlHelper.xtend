package io.github.jhipster.jdl.generator.lib.helper

import io.github.jhipster.jdl.jdl.JdlBlobFieldType
import io.github.jhipster.jdl.jdl.JdlBooleanFieldType
import io.github.jhipster.jdl.jdl.JdlDateFieldType
import io.github.jhipster.jdl.jdl.JdlEntityType
import io.github.jhipster.jdl.jdl.JdlEnumFieldType
import io.github.jhipster.jdl.jdl.JdlFieldType
import io.github.jhipster.jdl.jdl.JdlNumericFieldType
import io.github.jhipster.jdl.jdl.JdlStringFieldType

class JdlHelper {

	def static String getTypeName(JdlFieldType it) {
		return switch (it) {
			JdlEntityType: element.name
			JdlStringFieldType: element.element
			JdlBooleanFieldType: element.element
			JdlEnumFieldType : element.name
			JdlNumericFieldType: element.literal
			JdlDateFieldType: element.literal
			JdlBlobFieldType: element.literal
			default: eClass.name
		}
	}
}
