import { PageLayout, SharedLayout } from "./quartz/cfg"
import * as Component from "./quartz/components"
import { FileNode } from "./quartz/components/ExplorerNode";
import { QuartzPluginData } from "./quartz/plugins/vfile";

// components shared across all pages
export const sharedPageComponents: SharedLayout = {
  head: Component.Head(),
  header: [],
  footer: Component.Footer({
    links: {
      CV: "./Curriculum-Vitae",
      GitHub: "https://github.com/wjdenny",
      Mastodon: "https://pkm.social/@wjd"
    }
  }),
}

// components for pages that display a single page (e.g. a single note)
export const defaultContentPageLayout: PageLayout = {
  beforeBody: [
    Component.Breadcrumbs(),
    Component.ArticleTitle(),
    Component.ContentMeta(),
    Component.TagList(),
  ],
  left: [
    Component.PageTitle(),
    Component.MobileOnly(Component.Spacer()),
    Component.Search(),
    Component.Darkmode(),
    Component.DesktopOnly(Component.Explorer({
      title: "Topics",
      filterFn: (a: FileNode) => {
        const tags = a?.file?.frontmatter?.tags ?? [];
        return tags.includes(`index`);
      },
      sortFn: (a: FileNode, b: FileNode) => {
        const aModified = a?.file?.dates?.modified ?? new Date();
        const bModified = b?.file?.dates?.modified ?? new Date();
        
        // sort CV to the top
        const aTags = a?.file?.frontmatter?.tags ?? [];
        if (aTags.includes(`cv`))         {
          return -1
        }

        return bModified.getTime() - aModified.getTime();
      }
    }))
  ],
  right: [
    Component.Graph({
      localGraph: {
        showTags: false
      },
      globalGraph: undefined
    }),
    Component.DesktopOnly(Component.TableOfContents()),
    Component.Backlinks(),
  ],
}

// components for pages that display lists of pages  (e.g. tags or folders)
export const defaultListPageLayout: PageLayout = {
  beforeBody: [Component.Breadcrumbs(), Component.ArticleTitle(), Component.ContentMeta()],
  left: [
    Component.PageTitle(),
    Component.MobileOnly(Component.Spacer()),
    Component.Search(),
    Component.Darkmode(),
    Component.DesktopOnly(Component.Explorer()),
  ],
  right: [],
}
