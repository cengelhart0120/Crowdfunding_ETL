-- Crowdfunding_ETL Mini Project

-- Code below started with that exported from QuickDBD: https://www.quickdatabasediagrams.com/

-- Dropping tables if they already exist in the database
-- ("CASCADE" included in case constraints exist)
DROP TABLE campaign CASCADE;
DROP TABLE category CASCADE;
DROP TABLE contacts CASCADE;
DROP TABLE subcategory CASCADE;

CREATE TABLE "campaign" (
    "cf_id" INT   NOT NULL,
    "contact_id" INT   NOT NULL,
    "company_name" VARCHAR(40)   NOT NULL,
    "description" VARCHAR(60)   NOT NULL,
    "goal" FLOAT   NOT NULL,
    "pledged" FLOAT   NOT NULL,
    "outcome" VARCHAR(10)   NOT NULL,
    "backers_count" INT   NOT NULL,
    "country" VARCHAR(2)   NOT NULL,
    "currency" VARCHAR(3)   NOT NULL,
    "launched_date" DATE   NOT NULL,
    "end_date" DATE   NOT NULL,
    "category_id" VARCHAR(4)   NOT NULL,
    "subcategory_id" VARCHAR(8)   NOT NULL,
    CONSTRAINT "pk_campaign" PRIMARY KEY (
        "cf_id"
     )
);

CREATE TABLE "category" (
    "category_id" VARCHAR(4)   NOT NULL,
    "category" VARCHAR(15)   NOT NULL,
    CONSTRAINT "pk_category" PRIMARY KEY (
        "category_id"
     )
);

CREATE TABLE "contacts" (
    "contact_id" INT   NOT NULL,
    "first_name" VARCHAR(20)   NOT NULL,
    "last_name" VARCHAR(20)   NOT NULL,
    "email" VARCHAR(50)   NOT NULL,
    CONSTRAINT "pk_contacts" PRIMARY KEY (
        "contact_id"
     )
);

CREATE TABLE "subcategory" (
    "subcategory_id" VARCHAR(8)   NOT NULL,
    "subcategory" VARCHAR(20)   NOT NULL,
    CONSTRAINT "pk_subcategory" PRIMARY KEY (
        "subcategory_id"
     )
);

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_contact_id" FOREIGN KEY("contact_id")
REFERENCES "contacts" ("contact_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_category_id" FOREIGN KEY("category_id")
REFERENCES "category" ("category_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "subcategory" ("subcategory_id");

-- The campaign table must be populated LAST due to existing constraints
-- (The other three can be populated in any order, so long as they're populated before campaign)

-- Queries to ensure tables created & populated successfully
SELECT * FROM campaign LIMIT 10;
SELECT * FROM category LIMIT 10;
SELECT * FROM contacts LIMIT 10;
SELECT * FROM subcategory LIMIT 10;