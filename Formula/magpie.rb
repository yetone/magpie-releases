class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3621/magpie-cli-darwin-arm64"
      sha256 "d41cb02d9f1680eda9d0d035750483dc4ba404262f4689eeced25e0f051dd0c3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3621/magpie-cli-darwin-amd64"
      sha256 "65a01a9c38e1fd0338008d2da287240ed155905ceb43c8939c0914eb18f7ec74"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3621/magpie-cli-linux-arm64"
      sha256 "57b33ca42a267ca7862b10fcd8b3cb542d3019dad1f1e0a7152f88b30eb8af92"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3621/magpie-cli-linux-amd64"
      sha256 "2e40e12b3321f766afc2547c1ada9ff015e1ec588b6033e88a3d77f7fb7beebc"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
