class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3848/magpie-cli-darwin-arm64"
      sha256 "0d9ed51b4befc26a27689e824a252c7096d8ff46fce70552819ff929ca981518"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3848/magpie-cli-darwin-amd64"
      sha256 "1a55a9c3a34e9ccd1d2fe9680aeb58539e174a1a2c5903117099b3a5568b3f35"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3848/magpie-cli-linux-arm64"
      sha256 "6b23811335ead1065f4da57998afbc19cc3ef20f0975981e179144eca7fc9202"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3848/magpie-cli-linux-amd64"
      sha256 "12b725befc08abb6814ce4b0adec0b6e88fe09fbbf35ba297d0a459e84cde89f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
