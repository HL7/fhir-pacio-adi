This profile defines the requirements for communicating a Personal Advance Care Plan (Personal ACP) using a Composition Resource. It is used to create a person-generated document which is authored by the subject of the document (the patient). It contains information about the person's goals, preferences, and priorities (GPPs) for care and treatment under certain future conditions.

It is possible for a Personal ACP composition to only contain textual information and not have any encoded entries. In this case, an implementer may populate the `section.text` element in place of a resource reference in the `section.entry` element.

For a Person-authored composition, the attester is set to *personal*.