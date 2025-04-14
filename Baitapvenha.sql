-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		nguyen thi linh
-- Create date: 14:13'2025-04-13
-- Description:	sv_gv_busy tính khoảng thời gian t1..t2
-- =============================================
ALTER PROCEDURE sv_gv_busy  
    @hop_begin datetime = '2025-03-21 06:30',
	@hop_end datetime = '2025-03-21 12:00'
AS
BEGIN
SET NOCOUNT ON;
	WITH T AS (
		SELECT *, 
		       dbo.fn_gio_vao(tietbatdau) AS gio_vao,
		       dbo.fn_gio_ra( tietketthuc) AS gio_ra
		FROM T_KB)
	SELECT 
		G.TenGV,
		M.tenmon,
		T.gio_vao,
		T.gio_ra,
		T.Ngay
	FROM T 
		JOIN GV G ON T.Magv = G.Magv
		JOIN MONHOC M ON T.MaMon = M.mamon
	WHERE 
    CAST(@hop_begin AS TIME) <= gio_ra 
    AND CAST(@hop_end AS TIME) >= gio_vao
    AND Ngay BETWEEN CAST(@hop_begin AS DATE) AND CAST(@hop_end AS DATE)

END
GO
SELECT
    G.TenGV AS N'Họ tên GV',
    M.tenmon AS N'Môn dạy',
    dbo.fn_gio_vao(tietbatdau) AS gio_vao,
	dbo.fn_gio_ra( tietketthuc) AS gio_ra
FROM dbo.T_KB T
JOIN GV G ON T.MaGV = G.MaGV
JOIN MONHOC M ON T.MaMon = M.mamon;

EXEC sv_gv_busy  
    @hop_begin = '2025-03-21 06:30',
    @hop_end   = '2025-03-28 12:00';
