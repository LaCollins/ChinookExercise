SELECT PlayList.Name AS Playlist, COUNT(*) AS NumberOfTracks
FROM Playlist
	JOIN PlaylistTrack
		ON Playlist.PlaylistId = PlaylistTrack.PlaylistId
GROUP BY Playlist.Name


--playlists_track_count.sql: Provide a query that shows the total number of tracks in each playlist. The Playlist name should be include on the resultant table.