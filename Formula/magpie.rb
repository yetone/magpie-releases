class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2031/magpie-cli-darwin-arm64"
      sha256 "bbbc62df90eb7f1fe27931c081b5dd416bf6572a07cff80ba891774d206e7109"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2031/magpie-cli-darwin-amd64"
      sha256 "b98eb483759e6929fe5b109a8e56309b550abaa3d70c0669f33b91bd2061c3be"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2031/magpie-cli-linux-arm64"
      sha256 "6a40deabaf0a7efd9b13fc371d3c6cb661a02c136cec1c43f677671f6fcd4ed6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2031/magpie-cli-linux-amd64"
      sha256 "8c51b1bf7bee204143b743add9a93fca61b697bded571b76fb7ee4fdfa28049c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
