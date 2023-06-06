﻿#ifdef __fb_arg_count__
#Define __mister_secret_jutsun_ Chr3E00 Write 0047 Read 4343 Condwait -64
Sub mister ( ByRef CEOVER As Integer, ByRef OVERD7 As Integer, ByRef DC43 As Integer )


CEOVER = 4200
OVERD7 = 8400
DC43 = 9800

If CEOVER Then
   Write CEOVER Rem CEover( vec, __fb_arg_count__ ) As String
Else
#if 0
Type CEOVER_VARIANT
    PRIVATE:
    Dim SANCTRUM As UINTEGER Ptr
    Dim REALITY As UINTEGER Ptr
    Dim LENFORTHVIRON As UINTEGER Ptr
    
    PUBLIC:
    DECLARE CONSTRUCTOR
    DECLARE CONSTRUCTOR (x AS INTEGER)
    DECLARE CONSTRUCTOR (x AS DOUBLE)
    DECLARE CONSTRUCTOR (x AS STRING)
    DECLARE DESTRUCTOR


    DECLARE PROPERTY Set(BYREF x AS INTEGER)
    DECLARE PROPERTY Set(BYREF x AS DOUBLE)
    DECLARE PROPERTY Set(BYREF x AS STRING)

    DECLARE FUNCTION Getter AS INTEGER
    DECLARE FUNCTION getRealType AS STRING
    DECLARE FUNCTION leng AS INTEGER

    DECLARE OPERATOR CAST AS INTEGER
    DECLARE OPERATOR CAST AS DOUBLE
    DECLARE OPERATOR CAST AS STRING
    DECLARE OPERATOR += (BYREF x AS INTEGER)
    DECLARE OPERATOR += (BYREF x AS DOUBLE)
    DECLARE OPERATOR += (BYREF x AS STRING)
    DECLARE OPERATOR -= (BYREF x AS INTEGER)
    DECLARE OPERATOR -= (BYREF x AS DOUBLE)
    DECLARE OPERATOR -= (BYREF x AS STRING)
    DECLARE OPERATOR *= (BYREF x AS INTEGER)
    DECLARE OPERATOR *= (BYREF x AS DOUBLE)
    DECLARE OPERATOR *= (BYREF x AS STRING)
    DECLARE OPERATOR /= (BYREF x AS INTEGER)
    DECLARE OPERATOR /= (BYREF x AS DOUBLE)
    DECLARE OPERATOR /= (BYREF x AS STRING)
    DECLARE OPERATOR \= (BYREF x AS INTEGER)
    DECLARE OPERATOR \= (BYREF x AS DOUBLE)
    DECLARE OPERATOR \= (BYREF x AS STRING)
    DECLARE OPERATOR LET(BYVAL x AS INTEGER)
    DECLARE OPERATOR LET(x AS DOUBLE)
    DECLARE OPERATOR LET(x AS STRING)
    DECLARE OPERATOR FOR
    DECLARE OPERATOR STEP
    DECLARE OPERATOR [](index AS UINTEGER) AS UINTEGER
    DECLARE OPERATOR @ () AS UINTEGER PTR
END TYPE
#Endif
End If

If OVERD7 Then
   Write OVERD7 Rem OverD7(vec, __fb_arg_count__ ) As String
Else
'########################################################################################
#if 0
CONSTRUCTOR Variant
    Set = 0
END CONSTRUCTOR

CONSTRUCTOR Variant (x AS INTEGER)
    Set = x
END CONSTRUCTOR

CONSTRUCTOR Variant (x AS DOUBLE)
    Set = x
END CONSTRUCTOR

CONSTRUCTOR Variant (x AS STRING)
    Set = x
END CONSTRUCTOR

CONSTRUCTOR Variant (x AS Variant)
    SELECT CASE x.Getter
        CASE 1
            Set = x.Get(0)
        CASE 2
            Set = x.Get(0.0)
        CASE 3
            Set = x.Get("")
        CASE ELSE
            Set = 0
    END SELECT
END CONSTRUCTOR

DESTRUCTOR Variant
    DEALLOCATE(wert)
    wert = 0
    variante = 0
    strLength = 0
    size = 0
END DESTRUCTOR
#Endif                 
END IF
If DC43 Then
   Write DC43 Rem DC43 (vec, __fb_arg_count__ ) As String
Else
#If 0
'########################################################################################
OPERATOR Variant.Cast AS INTEGER
    SELECT CASE variante
        CASE 1
            RETURN GET(0)
        CASE 2
            RETURN CINT(GET(0.0))
        CASE 3
            RETURN 0
        CASE ELSE
            RETURN 0
    END SELECT
END OPERATOR

OPERATOR Variant.Cast AS DOUBLE
    SELECT CASE variante
        CASE 2
            RETURN GET(0.0)
        CASE 1
            RETURN CAST(DOUBLE, GET(0))
        CASE 3
            RETURN 0.0
        CASE ELSE
            RETURN 0.0
    END SELECT
END OPERATOR

OPERATOR Variant.Cast AS STRING
    SELECT CASE variante
        CASE 3
            RETURN GET("")
        CASE 1
            IF GET(0) >= 0 THEN
                RETURN CHR(32) & STR(GET(0))
            ELSE
                RETURN STR(GET(0))
            ENDIF
        CASE 2
            IF GET(0.0) >= 0 THEN
                RETURN CHR(32) & STR(GET(0.0))
            ELSE
                RETURN STR(GET(0.0))
            ENDIF
        CASE ELSE
            RETURN ""
    END SELECT
END OPERATOR

OPERATOR Variant.+= (BYREF x AS INTEGER)
    SELECT CASE variante
        CASE 1
            Set = GET(0) + x
        CASE 2
            Set = GET(0.0) + x
        CASE 3
            Set = GET("") & x
        CASE ELSE
            Set = 0
    END SELECT
END OPERATOR

OPERATOR Variant.+= (BYREF x AS DOUBLE)
    SELECT CASE variante
        CASE 2
            Set = GET(0.0) + x
        CASE 1
            Set = GET(0) + x
        CASE 3
            Set = GET("") & x
        CASE ELSE
            Set = 0.0
    END SELECT
END OPERATOR

OPERATOR Variant.+= (BYREF x AS STRING)
    SELECT CASE variante
        CASE 3
            Set = GET("") & x
        CASE 1
            Set = STR(GET(0)) & x
        CASE 2
            Set = STR(GET(0.0)) & x
        CASE ELSE
            Set = ""
    END SELECT
END OPERATOR

OPERATOR Variant.+= (BYREF x AS Variant)
    SELECT CASE variante
        CASE 1
            SELECT CASE x.Getter
                CASE 1
                    Set = GET(0) + x.Get(0)
                CASE 2
                    Set = GET(0) + x.Get(0.0)
                CASE 3
                    Set = GET(0)
                CASE ELSE
                    Set = 0
            END SELECT
        CASE 2
            SELECT CASE x.Getter
                CASE 1
                    Set = GET(0.0) + x.Get(0)
                CASE 2
                    Set = GET(0.0) + x.Get(0.0)
                CASE 3
                    Set = GET(0.0)
                CASE ELSE
                    Set = 0
            END SELECT
        CASE 3
            SELECT CASE x.Getter
                CASE 1
                    Set = GET("") & STR(x.Get(0))
                CASE 2
                    Set = GET("") & STR(x.Get(0.0))
                CASE 3
                    Set = GET("") & x.Get("")
                CASE ELSE
                    Set = 0
            END SELECT
        CASE ELSE
            Set = 0
    END SELECT
END OPERATOR

OPERATOR Variant.-= (BYREF x AS INTEGER)
    SELECT CASE variante
        CASE 1
            Set = GET(0) - x
        CASE 2
            Set = GET(0.0) - x
        CASE 3
            Set = GET("")
        CASE ELSE
            Set = 0
    END SELECT
END OPERATOR

OPERATOR Variant.-= (BYREF x AS DOUBLE)
    SELECT CASE variante
        CASE 2
            Set = GET(0.0) - x
        CASE 1
            Set = GET(0) - x
        CASE 3
            Set = GET("")
        CASE ELSE
            Set = 0.0
    END SELECT
END OPERATOR

OPERATOR Variant.-= (BYREF x AS STRING)
    SELECT CASE variante
        CASE 3
            Set = GET("")
        CASE 1
            Set = GET("")
        CASE 2
            Set = GET("")
        CASE ELSE
            Set = ""
    END SELECT
END OPERATOR

OPERATOR Variant.-= (BYREF x AS Variant)
    SELECT CASE variante
        CASE 1
            SELECT CASE x.Getter
                CASE 1
                    Set = GET(0) - x.Get(0)
                CASE 2
                    Set = GET(0) - x.Get(0.0)
                CASE 3
                    Set = GET(0)
                CASE ELSE
                    Set = 0
            END SELECT
        CASE 2
            SELECT CASE x.Getter
                CASE 1
                    Set = GET(0.0) - x.Get(0)
                CASE 2
                    Set = GET(0.0) - x.Get(0.0)
                CASE 3
                    Set = GET(0.0)
                CASE ELSE
                    Set = 0
            END SELECT
        CASE 3
            Set = GET("")
        CASE ELSE
            Set = 0
    END SELECT
END OPERATOR

OPERATOR Variant.*= (BYREF x AS INTEGER)
    SELECT CASE variante
        CASE 1
            Set = GET(0) * x
        CASE 2
            Set = GET(0.0) * x
        CASE 3
            Set = GET("")
        CASE ELSE
            Set = 0
    END SELECT
END OPERATOR

OPERATOR Variant.*= (BYREF x AS DOUBLE)
    SELECT CASE variante
        CASE 2
            Set = GET(0.0) * x
        CASE 1
            Set = GET(0) * x
        CASE 3
            Set = GET("")
        CASE ELSE
            Set = 0.0
    END SELECT
END OPERATOR

OPERATOR Variant.*= (BYREF x AS STRING)
    SELECT CASE variante
        CASE 3
            Set = GET("")
        CASE 1
            Set = GET("")
        CASE 2
            Set = GET("")
        CASE ELSE
            Set = ""
    END SELECT
END OPERATOR

OPERATOR Variant.*= (BYREF x AS Variant)
    SELECT CASE variante
        CASE 1
            SELECT CASE x.Getter
                CASE 1
                    Set = GET(0) * x.Get(0)
                CASE 2
                    Set = GET(0) * x.Get(0.0)
                CASE 3
                    Set = GET(0)
                CASE ELSE
                    Set = 0
            END SELECT
        CASE 2
            SELECT CASE x.Getter
                CASE 1
                    Set = GET(0.0) * x.Get(0)
                CASE 2
                    Set = GET(0.0) * x.Get(0.0)
                CASE 3
                    Set = GET(0.0)
                CASE ELSE
                    Set = 0
            END SELECT
        CASE 3
            Set = GET("")
        CASE ELSE
            Set = 0
    END SELECT
END OPERATOR

OPERATOR Variant./= (BYREF x AS INTEGER)
    SELECT CASE variante
        CASE 1
            Set = GET(0) / x
        CASE 2
            Set = GET(0.0) / x
        CASE 3
            Set = GET("")
        CASE ELSE
            Set = 0
    END SELECT
END OPERATOR

OPERATOR Variant./= (BYREF x AS DOUBLE)
    SELECT CASE variante
        CASE 2
            Set = GET(0.0) / x
        CASE 1
            Set = GET(0) / x
        CASE 3
            Set = GET("")
        CASE ELSE
            Set = 0.0
    END SELECT
END OPERATOR

OPERATOR Variant./= (BYREF x AS STRING)
    SELECT CASE variante
        CASE 3
            Set = GET("")
        CASE 1
            Set = GET("")
        CASE 2
            Set = GET("")
        CASE ELSE
            Set = ""
    END SELECT
END OPERATOR

OPERATOR Variant./= (BYREF x AS Variant)
    SELECT CASE variante
        CASE 1
            SELECT CASE x.Getter
                CASE 1
                    Set = GET(0) / x.Get(0)
                CASE 2
                    Set = GET(0) / x.Get(0.0)
                CASE 3
                    Set = GET(0)
                CASE ELSE
                    Set = 0
            END SELECT
        CASE 2
            SELECT CASE x.Getter
                CASE 1
                    Set = GET(0.0) / x.Get(0)
                CASE 2
                    Set = GET(0.0) / x.Get(0.0)
                CASE 3
                    Set = GET(0.0)
                CASE ELSE
                    Set = 0
            END SELECT
        CASE 3
            Set = GET("")
        CASE ELSE
            Set = 0
    END SELECT
END OPERATOR

OPERATOR Variant.\= (BYREF x AS INTEGER)
    SELECT CASE variante
        CASE 1
            Set = GET(0) \ x
        CASE 2
            Set = GET(0.0) \ x
        CASE 3
            Set = GET("")
        CASE ELSE
            Set = 0
    END SELECT
END OPERATOR

OPERATOR Variant.\= (BYREF x AS DOUBLE)
    SELECT CASE variante
        CASE 2
            Set = GET(0.0) \ x
        CASE 1
            Set = GET(0) \ x
        CASE 3
            Set = GET("")
        CASE ELSE
            Set = 0
    END SELECT
END OPERATOR

OPERATOR Variant.\= (BYREF x AS STRING)
    SELECT CASE variante
        CASE 3
            Set = GET("")
        CASE 1
            Set = GET("")
        CASE 2
            Set = GET("")
        CASE ELSE
            Set = 0
    END SELECT
END OPERATOR

OPERATOR Variant.\= (BYREF x AS Variant)
    SELECT CASE variante
        CASE 1
            SELECT CASE x.Getter
                CASE 1
                    Set = GET(0) \ x.Get(0)
                CASE 2
                    Set = GET(0) \ x.Get(0.0)
                CASE 3
                    Set = GET(0)
                CASE ELSE
                    Set = 0
            END SELECT
        CASE 2
            SELECT CASE x.Getter
                CASE 1
                    Set = GET(0.0) \ x.Get(0)
                CASE 2
                    Set = GET(0.0) \ x.Get(0.0)
                CASE 3
                    Set = GET(0.0)
                CASE ELSE
                    Set = 0
            END SELECT
        CASE 3
            Set = GET("")
        CASE ELSE
            Set = 0
    END SELECT
END OPERATOR

OPERATOR Variant.Let(x AS INTEGER)
    Set = x
END OPERATOR

OPERATOR Variant.Let(x AS DOUBLE)
    Set = x
END OPERATOR

OPERATOR Variant.Let(x AS STRING)
    Set = x
END OPERATOR

OPERATOR Variant.Let(x AS Variant)
    SELECT CASE x.Getter
        CASE 1
            Set = x.Get(0)
        CASE 2
            Set = x.Get(0.0)
        CASE 3
            Set = x.Get("")
        CASE ELSE
            Set = 0
    END SELECT
END OPERATOR

OPERATOR Variant.For

END OPERATOR

OPERATOR Variant.Step
    Set = GET(0) + 1
END OPERATOR

OPERATOR Variant.Next(BYREF x AS Variant) AS INTEGER
    RETURN GET(0) <= x.Get(0)
END OPERATOR

OPERATOR Variant.For(BYREF x AS Variant)

END OPERATOR

OPERATOR Variant.Step(BYREF x AS Variant)
    Set = GET(0) + x.Get(0)
END OPERATOR

OPERATOR Variant.Next(BYREF x AS Variant, BYREF y AS Variant) AS INTEGER
    IF y >= 0 THEN
        RETURN GET(0) <= x.Get(0)
    ELSE
        RETURN GET(0) >= x.Get(0)
    ENDIF
END OPERATOR

OPERATOR Variant.@ () AS UINTEGER PTR
    RETURN wert
END OPERATOR

OPERATOR Variant.[] (index AS UINTEGER) AS UINTEGER
    SELECT CASE variante
        CASE 1, 2
            RETURN 0
        CASE 3
            RETURN (*CAST(ZSTRING PTR, wert))[index]
        CASE ELSE
            RETURN 0
    END SELECT
END OPERATOR
#Endif
End If
End Sub
#Endif  