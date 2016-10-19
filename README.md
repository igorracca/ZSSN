# ZSSN
The world as we know it has fallen into an apocalyptic scenario. A laboratory-made virus is transforming human beings and animals into zombies, hungry for fresh flesh. You, as a zombie resistance member (and the last survivor who knows how to code), was designated to develop a system to share resources between non-infected humans.

You, as a zombie resistance member (and the last survivor who knows how to code), was designated to develop a system to share resources between non-infected humans.

## Requirements

Add survivors to the database

A survivor must have a name, age, gender and last location (latitude, longitude).

A survivor also has an inventory of resources of their own property (which you need to declare when upon the registration of the survivor).

-Update survivor location

A survivor must have the ability to update their last location, storing the new latitude/longitude pair in the base (no need to track locations, just replacing the previous one is enough).

-Flag survivor as infected

In a chaotic situation like that, it's inevitable that a survivor may get contaminated by the virus. When this happens, we need to flag the survivor as infected.

An infected survivor cannot trade with others, can't access/manipulate their inventory, nor be listed in the reports (infected people are kinda dead anyway, see the item on reports below).

A survivor is marked as infected when at least three other survivors report their contamination.

When a survivor is infected, their inventory items become inaccessible (they cannot trade with others).

-Survivors cannot Add/Remove items from inventory

Their belongings must be declared when they are first registered in the system. After that they can only change their inventory by means of trading with other survivors.

The items allowed in the inventory are described above in the first feature.

-Trade items:

Survivors can trade items among themselves.

To do that, they must respect the price table below, where the value of an item is described in terms of points.

Both sides of the trade should offer the same amount of points. For example, 1 Water and 1 Medication (1 x 4 + 1 x 2) is worth 6 ammunition (6 x 1) or 2 Food items (2 x 3).

The trades themselves need not to be stored, but the items must be transferred from one user to the other.

| Item        | Points           | 
| ------------- |:-------------:| 
| Water      | 4 | 
| Food      | 3      | 
|Medication | 2       | 
| Ammunition | 1      | 

-Reports

The API must offer the following reports:

1. Percentage of infected survivors.
2. Percentage of non-infected survivors.
3. Average amount of each kind of resource by survivor (e.g. 5 waters per user)
4. Points lost because of infected survivor.

```
To resolve Migrations issue, run: 
> bin/rake db:migrate
```
