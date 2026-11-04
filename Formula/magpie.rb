class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2949/magpie-cli-darwin-arm64"
      sha256 "eb77ce99aa4b46800fc6c0096be0455dea012347edf9f4277eedbaed6793c585"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2949/magpie-cli-darwin-amd64"
      sha256 "cb3d43ab71ec902ce808e83952be69468da4edbb19ddaa7b05ce4bea2b82e7fa"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2949/magpie-cli-linux-arm64"
      sha256 "b2c0654088f8e080c0dd36ddaf50693e72e70e051d196abf835fdd75bb32a312"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2949/magpie-cli-linux-amd64"
      sha256 "2611c06c105ea0bac355f4678c0e11a8aaacd7c9e946ade73f5818fb9d1f05ad"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
