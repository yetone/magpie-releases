class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4361/magpie-cli-darwin-arm64"
      sha256 "7aca6e9ca5e91b19247f7936c9d7b6a27947cb5319c0de4a8bc8c50cfa182901"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4361/magpie-cli-darwin-amd64"
      sha256 "e722fcc10a06787b8bf70ee9ae8cc3f164df91855a1dacdb3df0c057d3691de7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4361/magpie-cli-linux-arm64"
      sha256 "73fd0118bbb21255834d1a98f00f59d602ba70072cf9ef1e50dddc4342ef308f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4361/magpie-cli-linux-amd64"
      sha256 "62144cd1e93102605820731fd7d5b5306ce98a3093fd3fc6ee4a2ea0210aadce"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
