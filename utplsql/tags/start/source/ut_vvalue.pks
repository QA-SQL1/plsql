/* Formatted on 2001/09/15 09:25 (RevealNet Formatter v4.4.1) */
CREATE OR REPLACE PACKAGE utvvalue
--//-----------------------------------------------------------------------
--//  ** PL/Generator Table Encapsulator for "UTV_VALUE"
--//-----------------------------------------------------------------------
--//  (c) COPYRIGHT Personnel Policies, Inc. 2001.
--//               All rights reserved.
--//
--//  No part of this copyrighted work may be reproduced, modified,
--//  or distributed in any form or by any means without the prior
--//  written permission of Personnel Policies, Inc..
--//-----------------------------------------------------------------------
--//  This software was generated by RevealNet's PL/Generator (TM).
--//
--//  For more information, visit www.revealnet.com or call 1.800.REVEAL4
--//-----------------------------------------------------------------------
--//  Stored In:  utvvalue.pks
--//  Created On: September 15, 2001 09:21:01
--//  Created By: SCOTT
--//  PL/Generator Version: PRO-2000.2.9
--//-----------------------------------------------------------------------
IS
   
--// Data Structures //--
   TYPE pky_rt IS RECORD (
      id                            utv_value.id%TYPE);

   --// Modified version of %ROWTYPE for table with subset of columns //--
   TYPE allcols_rt IS RECORD (
      id                            utv_value.id%TYPE,
      data_type                     utv_value.data_type%TYPE,
      data_type_name                utv_value.data_type_name%TYPE,
      is_expression                 utv_value.is_expression%TYPE,
      VALUE                         utv_value.VALUE%TYPE,
      record_id                     utv_value.record_id%TYPE,
      object_id                     utv_value.object_id%TYPE,
      collection_id                 utv_value.collection_id%TYPE,
      uri_id                        utv_value.uri_id%TYPE,
      xml_id                        utv_value.xml_id%TYPE,
      lob_id                        utv_value.lob_id%TYPE);

   TYPE cv_t IS REF CURSOR;

   
--// Cursors //--

   CURSOR allbypky_cur
   IS
      SELECT   id, data_type, data_type_name, is_expression, VALUE,
               record_id, object_id, collection_id, uri_id, xml_id,
               lob_id
          FROM utv_value
      ORDER BY id;

   CURSOR allforpky_cur (id_in IN utv_value.id%TYPE)
   IS
      SELECT id, data_type, data_type_name, is_expression, VALUE,
             record_id, object_id, collection_id, uri_id, xml_id,
             lob_id
        FROM utv_value
       WHERE id = allforpky_cur.id_in;

   
--// Cursor management procedures //--

   --// Open the cursors with some options. //--
   PROCEDURE open_allforpky_cur (
      id_in           IN   utv_value.id%TYPE,
      close_if_open   IN   BOOLEAN := TRUE
   );

   PROCEDURE open_allbypky_cur (close_if_open IN BOOLEAN := TRUE);

   --// Close the cursors if they are open. //--
   PROCEDURE close_allforpky_cur;

   PROCEDURE close_allbypky_cur;

   PROCEDURE closeall;

   
--// Analyze presence of primary key: is it NOT NULL? //--

   FUNCTION isnullpky (rec_in IN allcols_rt)
      RETURN BOOLEAN;

   FUNCTION isnullpky (rec_in IN pky_rt)
      RETURN BOOLEAN;

   
--// Emulate aggregate-level record operations. //--

   FUNCTION recseq (rec1 IN allcols_rt, rec2 IN allcols_rt)
      RETURN BOOLEAN;

   FUNCTION recseq (rec1 IN pky_rt, rec2 IN pky_rt)
      RETURN BOOLEAN;

   
--// Fetch Data //--

   --// Fetch one row of data for a primary key. //--
   FUNCTION onerow (id_in IN utv_value.id%TYPE)
      RETURN allcols_rt;

   --// Count of all rows in table and for each foreign key. //--
   FUNCTION rowcount
      RETURN INTEGER;

   FUNCTION pkyrowcount (id_in IN utv_value.id%TYPE)
      RETURN INTEGER;

   
--// Update Processing //--

   PROCEDURE reset$frc;

   --// Force setting of NULL values //--

   FUNCTION data_type$frc (
      data_type_in   IN   utv_value.data_type%TYPE DEFAULT NULL
   )
      RETURN utv_value.data_type%TYPE;

   FUNCTION data_type_name$frc (
      data_type_name_in   IN   utv_value.data_type_name%TYPE
            DEFAULT NULL
   )
      RETURN utv_value.data_type_name%TYPE;

   FUNCTION is_expression$frc (
      is_expression_in   IN   utv_value.is_expression%TYPE
            DEFAULT NULL
   )
      RETURN utv_value.is_expression%TYPE;

   FUNCTION value$frc (value_in IN utv_value.VALUE%TYPE DEFAULT NULL)
      RETURN utv_value.VALUE%TYPE;

   FUNCTION record_id$frc (
      record_id_in   IN   utv_value.record_id%TYPE DEFAULT NULL
   )
      RETURN utv_value.record_id%TYPE;

   FUNCTION object_id$frc (
      object_id_in   IN   utv_value.object_id%TYPE DEFAULT NULL
   )
      RETURN utv_value.object_id%TYPE;

   FUNCTION collection_id$frc (
      collection_id_in   IN   utv_value.collection_id%TYPE
            DEFAULT NULL
   )
      RETURN utv_value.collection_id%TYPE;

   FUNCTION uri_id$frc (
      uri_id_in   IN   utv_value.uri_id%TYPE DEFAULT NULL
   )
      RETURN utv_value.uri_id%TYPE;

   FUNCTION xml_id$frc (
      xml_id_in   IN   utv_value.xml_id%TYPE DEFAULT NULL
   )
      RETURN utv_value.xml_id%TYPE;

   FUNCTION lob_id$frc (
      lob_id_in   IN   utv_value.lob_id%TYPE DEFAULT NULL
   )
      RETURN utv_value.lob_id%TYPE;

   PROCEDURE upd (
      id_in               IN       utv_value.id%TYPE,
      data_type_in        IN       utv_value.data_type%TYPE
            DEFAULT NULL,
      data_type_name_in   IN       utv_value.data_type_name%TYPE
            DEFAULT NULL,
      is_expression_in    IN       utv_value.is_expression%TYPE
            DEFAULT NULL,
      value_in            IN       utv_value.VALUE%TYPE DEFAULT NULL,
      record_id_in        IN       utv_value.record_id%TYPE
            DEFAULT NULL,
      object_id_in        IN       utv_value.object_id%TYPE
            DEFAULT NULL,
      collection_id_in    IN       utv_value.collection_id%TYPE
            DEFAULT NULL,
      uri_id_in           IN       utv_value.uri_id%TYPE DEFAULT NULL,
      xml_id_in           IN       utv_value.xml_id%TYPE DEFAULT NULL,
      lob_id_in           IN       utv_value.lob_id%TYPE DEFAULT NULL,
      rowcount_out        OUT      INTEGER,
      reset_in            IN       BOOLEAN DEFAULT TRUE
   );

   --// Record-based Update //--

   PROCEDURE upd (
      rec_in         IN       allcols_rt,
      rowcount_out   OUT      INTEGER,
      reset_in       IN       BOOLEAN DEFAULT TRUE
   );

   
--// Insert Processing //--

   --// Initialize record with default values. //--
   FUNCTION initrec (allnull IN BOOLEAN := FALSE)
      RETURN allcols_rt;

   --// Initialize record with default values. //--
   PROCEDURE initrec (
      rec_inout   IN OUT   allcols_rt,
      allnull     IN       BOOLEAN := FALSE
   );

   --// Generate next primary key: for single column PKs only. //--
   FUNCTION nextpky
      RETURN utv_value.id%TYPE;

   PROCEDURE ins (
      data_type_in        IN       utv_value.data_type%TYPE
            DEFAULT NULL,
      data_type_name_in   IN       utv_value.data_type_name%TYPE
            DEFAULT NULL,
      is_expression_in    IN       utv_value.is_expression%TYPE
            DEFAULT NULL,
      value_in            IN       utv_value.VALUE%TYPE DEFAULT NULL,
      record_id_in        IN       utv_value.record_id%TYPE
            DEFAULT NULL,
      object_id_in        IN       utv_value.object_id%TYPE
            DEFAULT NULL,
      collection_id_in    IN       utv_value.collection_id%TYPE
            DEFAULT NULL,
      uri_id_in           IN       utv_value.uri_id%TYPE DEFAULT NULL,
      xml_id_in           IN       utv_value.xml_id%TYPE DEFAULT NULL,
      lob_id_in           IN       utv_value.lob_id%TYPE DEFAULT NULL,
      id_out              IN OUT   utv_value.id%TYPE,
      upd_on_dup          IN       BOOLEAN := FALSE
   );

   -- Simple insert for expressions/scalars only.
   PROCEDURE ins (
      data_type_in       IN       utv_value.data_type%TYPE
            DEFAULT NULL,
      is_expression_in   IN       BOOLEAN,
      value_in           IN       utv_value.VALUE%TYPE DEFAULT NULL,
      id_out             IN OUT   utv_value.id%TYPE,
      upd_on_dup         IN       BOOLEAN := FALSE
   );

   PROCEDURE ins (
      rec_in       IN       allcols_rt,
      id_out       IN OUT   utv_value.id%TYPE,
      upd_on_dup   IN       BOOLEAN := FALSE
   );

   
--// Delete Processing //--
   PROCEDURE del (
      id_in          IN       utv_value.id%TYPE,
      rowcount_out   OUT      INTEGER
   );

   --// Record-based delete //--
   PROCEDURE del (rec_in IN pky_rt, rowcount_out OUT INTEGER);

   PROCEDURE del (rec_in IN allcols_rt, rowcount_out OUT INTEGER);

   --// Program called by database initialization script to pin the package. //--
   PROCEDURE pinme;

   FUNCTION version
      RETURN VARCHAR2;
END utvvalue;
/
