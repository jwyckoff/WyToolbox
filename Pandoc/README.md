# INCYCLE SOFTWARE TRAINING COURSE STANDARDS <!-- omit in toc -->

## Table of Contents <!-- omit in toc -->

- [Course Organizational Concepts](#course-organizational-concepts)
  - [Course Entities & Relationships](#course-entities--relationships)
  - [Course Number](#course-number)
  - [Numbering within a Course](#numbering-within-a-course)
    - [Numbering Modules](#numbering-modules)
    - [Number Sections](#number-sections)
    - [Module Intro & Summary "Sections"](#module-intro--summary-sections)
    - [Course Intro "Module"](#course-intro-module)
- [Standard Slides Types](#standard-slides-types)
  - [Module Organization](#module-organization)
- [Course File / Folder Organization](#course-file--folder-organization)
  - [Key Files](#key-files)
    - [Master Word Doc](#master-word-doc)
- [Key Slides Types](#key-slides-types)

-----------

NOTE: it is recommended to utilize the VS Code Extention, *"Markdown All in One"* [(Marketplace Link)](https://marketplace.visualstudio.com/items?itemName=yzhang.markdown-all-in-one)

## Course Organizational Concepts

### Course Entities & Relationships

There are four (4) key entities in Course material:

1. Course
2. Modules
3. Sections
4. Slides

Each entity listed has a header/detail relationship with the previous entity. For example:

1. A **Course** has one/more **Modules**
2. A **Module** has one/more **Sections**
3. A **Section** has one/more **Slides**

### Course Number

Each course will have a primary key, for internal use only.  The Course Number will be formatted as:

`IN###`

The numbering will start with 101, and really have no functional meaning to it.

Examples of Course Numbers include:

`IN101`

`IN102`

### Numbering within a Course

Within a given course (example `IN101 - Azure Fundementals`), a numbering structure should be utilized for content organizational purposes.

| Level   | Org                 | Numbering |
|---------|---------------------|-----------|
| 0       | Course              | n/a       |
| 1       | Modules             | #         |
| 2       | Sections            | #.#       |
| 3       | Slides              | #.#.#     |

#### Numbering Modules

There should be between 3-5 Modules in a given Course.  Each Module will have it's own distinct number.  For example:

```
Course IN000 - Course Name
  Modules:
    1. Module 1 - The First Module
    2. Module 2 - The Second Module
    3. Module 3 - The Third Module
    4. Module 4 - The Fourth Module

```

#### Number Sections

There are likely between 3-7 Sections to a given Module.  



```
Course IN000 - Course Name
  Modules:
    1. Module 1 - The First Module
      Sections:
        1.1 The First Section
        1.2 The Second Section
        1.3 The Third Section
    2. Module 2 - The Second Module
      Sections:
        2.1 The First Section
        2.2 The Second Section
        2.3 The Third Section
        2.4 The Fourth Section
    3. Module 3 - The Third Module
      Sections:
        ... (repeat as above)
    4. Module 4 - The Fourth Module
      Sections:
        ... (repeat as above)

```



#### Module Intro & Summary "Sections"

* Each Module will also include an Intro and Summary "Section".  
* The Intro Section will always be numbered Section 0
* The Summary Section will always be numbered Section X (allows for easy sorting)

In our example, the following is the logical breakdown for `Module 1` and `Module 2`:



```
Course IN000 - Course Name
  Modules:
    1. Module 1 - The First Module
      Sections:
        1.0 Module Intro <------------------- NEW
        1.1 The First Section
        1.2 The Second Section
        1.3 The Third Section
        1.X Module Summary  <------------------- NEW
    2. Module 2 - The Second Module
      Sections:
        2.0 Module Intro <------------------- NEW
        2.1 The First Section
        2.2 The Second Section
        2.3 The Third Section
        2.4 The Fourth Section
        2.X Module Summary  <------------------- NEW
    3. Module 3 - The Third Module
      Sections:
        ... (repeat as above)
    4. Module 4 - The Fourth Module
      Sections:
        ... (repeat as above)

```

#### Course Intro "Module"

Similar to the Intro and Summary sections for each module, the Course will have an Intro "Module"

```
Course IN000 - Course Name
  Modules:
    0. Course Overview <------------------- NEW
      Sections:
        0.0 Course Intro <------------------- NEW
    1. Module 1 - The First Module
      Sections:
        1.0 Module Intro
        1.1 The First Section
        1.2 The Second Section
        1.3 The Third Section
        1.X Module Summary  
    2. Module 2 - The Second Module
      Sections:
        2.0 Module Intro
        2.1 The First Section
        2.2 The Second Section
        2.3 The Third Section
        2.4 The Fourth Section
        ... (repeat as above)
        2.X Module Summary  
    3. Module 3 - The Third Module
      Sections:
        ... (repeat as above)
    4. Module 4 - The Fourth Module
      Sections:
        ... (repeat as above)
```

## Standard Slides Types

* Slides don't need to be numbered.  
* There are likely two or more slides per Section




1. Course Title
2. Course Module Summary
3. Module Title
4. Module Agenda
5. Section Title



```
Course IN000 - From Seed to Sandwich: the Peanut Butter and Jelly Sandwich
  Modules:
    1. Peanuts
      Sections:
        1.0 Module Intro   <------------------- NEW
        1.1 History of the Peanut
        1.2 How to grow Peanuts
        1.3 Peanuts to Peanut Butter: let's get messy!
        1.X Module Summary <------------------- NEW
    2. Jelly
      Sections:
        2.0 Module Intro   <------------------- NEW
        2.1 History of the Jellies
        2.2 It's not just about Grapes
        2.3 How to grow Grapes
        2.4 Grapes to Grape Jelly: let's get messy!
        2.X Module Summary <------------------- NEW
```
### Module Organization

Each Module will have a general organization structure.  The structure is as follows:

- Section Module Title
- Module Agenda (list each section)
- Section 1 Title
  - Section Content
  - Section Content
  - Section Content (etc.)
- Section 2 (...)
- Section 3 (...)
- Section N (...)
- Key Takeaways
- InCycle Insights
- Questions? (end of module)

## Course File / Folder Organization

### Key Files

1. Master Word Doc (Word Document)
2. Syllabus Summary (Word Document)
3. Pitch Deck (Powerpoint Presentation)
4. Module Deck (Powerpoint Presentation)
5. Course Prentation Template File (Powerpoint Presentation Template - *.potx)

#### Master Word Doc

loremLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna ali

- The Master Word Doc is desigend to be the "source code" of the Course.  
  - Update thte Master Word Doc, then subsquent files

## Key Slides Types

There are X number of key slides types:

1. Title Slide
2. Section Slide
3. In this module
4. Key Takeways
5. Incycle Insights
6. Syllabus
7. Furture Reading
