class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1985/magpie-cli-darwin-arm64"
      sha256 "c5f6b06e027df69a9c43e91aec7fbb82b66801ecce7c6420075a66330fc9ecf2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1985/magpie-cli-darwin-amd64"
      sha256 "833ab937a74fca7fd241b373cc4950dac18acdffdd857b5789d35d3504eb43ba"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1985/magpie-cli-linux-arm64"
      sha256 "c98e58d865f23332276a442c7c73ec2279b5a3441d422b60193c78d9a7bc04e0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1985/magpie-cli-linux-amd64"
      sha256 "340f07d6654a3c9ecdfbf82e0ff437efe25447121f99fea5215f5725b6912039"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
