class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3136/magpie-cli-darwin-arm64"
      sha256 "ed8ad08f8aff6094e80a0ca07dcfd6ee5b8103dd980776801f94dfb7fc21063f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3136/magpie-cli-darwin-amd64"
      sha256 "bf274ac5dd01b661698bacea4f649c6ce1318d208557e555244bf116b1064496"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3136/magpie-cli-linux-arm64"
      sha256 "32fc69ebc87760845b075e4f0b670457a03f7e71341d3133abef8d80aa158ae5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3136/magpie-cli-linux-amd64"
      sha256 "07b2220dbadc4c39fb6046fc9cb4f1701e71c48638748afe72d9cba00b8b61c4"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
