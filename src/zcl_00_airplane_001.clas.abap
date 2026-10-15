CLASS zcl_00_airplane_001 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    METHODS set_attributes
      IMPORTING
        !im_name      TYPE string
        !im_planetype TYPE string.

    METHODS get_attributes.
    METHODS constructor.

    CLASS-METHODS get_no_of_planes
      EXPORTING
        !no_of_planes TYPE i.

  PROTECTED SECTION.

  PRIVATE SECTION.
    DATA gv_name      TYPE string.
    DATA gv_planetype TYPE string.

    CLASS-DATA gv_no_of_planes TYPE i.
ENDCLASS.


CLASS zcl_00_airplane_001 IMPLEMENTATION.

  METHOD constructor.
    gv_no_of_planes = gv_no_of_planes + 1.
  ENDMETHOD.

  METHOD get_attributes.
    WRITE: / 'FLIGHT NAME: ', gv_name,
           / 'PLANE TYPE: ', gv_planetype.
  ENDMETHOD.

  METHOD get_no_of_planes.
    no_of_planes = gv_no_of_planes.
  ENDMETHOD.

  METHOD set_attributes.
    gv_name = im_name.
    gv_planetype = im_planetype.
  ENDMETHOD.

ENDCLASS.
