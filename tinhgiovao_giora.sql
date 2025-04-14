ALTER FUNCTION dbo.fn_gio_vao(@tiet INT)
RETURNS TIME
AS
BEGIN
    RETURN (
        SELECT
            CASE @tiet
                WHEN 1 THEN '06:30'
                WHEN 2 THEN '07:45'
                WHEN 3 THEN '09:20'
                WHEN 4 THEN '10:45'
                WHEN 5 THEN '12:30'
                WHEN 6 THEN '13:55'
                WHEN 7 THEN '15:20'
                WHEN 8 THEN '16:45'
				WHEN 9 THEN '18:10'
                ELSE NULL
            END
    )
END;
GO

ALTER FUNCTION dbo.fn_gio_ra(@tiet INT)
RETURNS TIME
AS
BEGIN
    RETURN (
        SELECT
            CASE @tiet
                WHEN 1 THEN '07:45'
                WHEN 2 THEN '09:00'
                WHEN 3 THEN '10:35'
                WHEN 4 THEN '12:00'
                WHEN 5 THEN '13:45'
                WHEN 6 THEN '15:10'
                WHEN 7 THEN '16:35'
                WHEN 8 THEN '18:00'
				WHEN 9 THEN '19:25'
                ELSE NULL
            END
    )
END;
GO






SELECT 
    dbo.fn_gio_vao(1) AS GioVao_Tiet1,
    dbo.fn_gio_ra(4)  AS GioRa_Tiet4;
    


