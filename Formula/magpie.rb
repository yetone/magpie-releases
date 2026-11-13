class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4015/magpie-cli-darwin-arm64"
      sha256 "638a86689d2b8c92129f6377af64bd21f32744ca43b6f76284b61f06d2f7dd1b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4015/magpie-cli-darwin-amd64"
      sha256 "942b86c43b894119f642d782d3b39a122c28e9eea5b9759e8b8005172e7dfeff"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4015/magpie-cli-linux-arm64"
      sha256 "a814d39db4ca0c595c7739b61036021d686a6b20a1977b19d4e859326aac2e92"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4015/magpie-cli-linux-amd64"
      sha256 "1970dac6de0a73f5f8e1cb06d268bfbc21b1a7a8fc05b758c6d92c7b63e23726"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
