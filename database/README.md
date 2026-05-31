# DataBase Directory

## Table of Content
- [Description](#description)
- [Files/Directories](#filesdirectories)

### Description
This directory contains two databases: spreed sheet and SQL.
DB contains three tables: Parts, Tools and Part-Tool.
* __Parts.__ Fields: ID	Nr	Name	Dir	Model	Drawing	Photo	G-code
* __Tools.__ Fields: ID	Type	Unique_Code	Name	Length_mm	Diameter_mm	Angle	Storage_Machine_ID	Slot	Dir	Photo
* __Part-Tool.__ Fields: ID	ID_Part	ID_Tool

Table __Part-Tool__ links parts and tools UID. Classic many-to-many database. You can filter by part and get a list of all tools you need.

### Files/Directories
* [Spreed Sheet](Parts-Tools.xlsx) : A database for a Minimum Viable Product (MVP).