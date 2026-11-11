class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3791/magpie-cli-darwin-arm64"
      sha256 "26b14072f0c1f90cf170b6b19bc9a92f114eb7a044c1ffc6c0de977622788933"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3791/magpie-cli-darwin-amd64"
      sha256 "602650a2027dd92ff8fc96a2a54fcc7ef207bac9196385b9842688bd613baac3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3791/magpie-cli-linux-arm64"
      sha256 "72a02fad0ec3f6c63be0bf22a17cc2fd58f0014189a92e21cdaf0d23d7a5b89e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3791/magpie-cli-linux-amd64"
      sha256 "94368794b7823507697252335dde4baa04fa7d5d9df15bc87a42efc7b60b98d4"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
