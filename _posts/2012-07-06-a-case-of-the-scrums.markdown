---
title: A case of the scrums
layout: post
---

Recently where I work we have changed our agile process a bit. When we decided to switch to scrum, we’d started by doing it the way it’s described most of the time: a product owner organizes the backlog, team gives stories estimates, and repeat this for each sprint.

Now, it might be because we have a small team (3 part-time developers), or it might be other reasons, but after trying this process out for a few months, we didn’t feel that this style of doing scrum was the best match for our team and product.

We do sprints of two weeks long, and deploy to staging after every sprint. Every two sprints we deploy to production as well. We feel that this is long enough to get up to speed, but short enough not to lose a lot of flexibility.

All of this is still pretty much a standard scrum setup. However, we felt that the role of the product owner was hard to fill in our situation.

For every release (i.e. two sprints) we choose a few goals. Anyone can add goals into Pivotal Tracker (as epics), and we add a release planning meeting where the epics for the coming two sprints get chosen. Everyone present at this meeting gets to promote one epic and has to explain why they feel that epic is the most important one at that moment. Usually some consensus will be formed, but ultimately the choice of epics for a sprint lies with the product owner.

Epics are about features at a higher level than stories, but should still be able to be completed within the two sprints of the release. Anything that’s bigger than even two sprints should really be possible to be broken up, otherwise it’s probably not fleshed out enough to be broken further down into stories anyway.

After this preplanning meeting the team will ensure that the stories for the chosen goals get created. The developers will form and arrange the backlog for the coming sprint, and meet up to rate the stories.

At the start of the sprint last minute details like incoming requests from customers (this is stuff we should have an administration interface for but currently haven’t, and thus needs to be changed by developers using migrations) get added to the sprint and rated, and any stories that do not fit within the sprint anymore get moved back to the icebox. We do this because these were arranged such that they were the least important, and it’s highly likely that the next release will not have the same goals (in fact, in general this is our rule), and hence will have no place for these overflowing stories.

We religiously trim the backlog in this manner because we have noticed that a backlog cannot be maintained past a few sprints anyway. Any new stories that come up will usually feel more important than whatever is near the end of the backlog, which leaves the backlog with a perpetual long and sad tail. Recognizing this, we have decided to forcefully chop this tail off rather than drag it along.
