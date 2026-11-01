class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2630/magpie-cli-darwin-arm64"
      sha256 "4cd625535605a96809939491c73cfb2101bef4ffdc5aca6787735c2db7faa2ea"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2630/magpie-cli-darwin-amd64"
      sha256 "5c40c4d38e990b715404f9a89a12ea2f4c45248c2daae401b573a459535bea57"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2630/magpie-cli-linux-arm64"
      sha256 "b2f15698b0d4eb8fb6ef8f9c73977851716fae29a43182be5875e59e46fe59eb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2630/magpie-cli-linux-amd64"
      sha256 "d949f78bf6930e00f647c3070befb0001b2c77989bb097450c39e6234f4da5ae"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
