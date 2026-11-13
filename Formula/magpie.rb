class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4007/magpie-cli-darwin-arm64"
      sha256 "dfbc0a81582687a50c641f9bf1e0f7439f9d137d3e435c254bc2bd3aa86e02e4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4007/magpie-cli-darwin-amd64"
      sha256 "197c07d6318fb4f48264c12a11a767ae1cb5bff8b83b6321e6a3c382ff1f221a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4007/magpie-cli-linux-arm64"
      sha256 "e35124981501176d1788c4b67b28ecfed442478f85a2849d0afe591c18bc4978"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4007/magpie-cli-linux-amd64"
      sha256 "47f8f30cc0953c06d614e34785f31e5dafcc759e64667dc504b500fec909f754"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
