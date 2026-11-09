class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3362/magpie-cli-darwin-arm64"
      sha256 "95b713c3a25de96dc4fdab02da78a51d34ba9c518a6487486a7641af73d297e4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3362/magpie-cli-darwin-amd64"
      sha256 "82eb419c4a7e99fb30de11ac94ec640e08ab62dddbe09da63e5acd944e5bd50b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3362/magpie-cli-linux-arm64"
      sha256 "46bb45369591871ef2ca5563b1c3d2d39a0928ea99041b511da13ccebb4c3d80"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3362/magpie-cli-linux-amd64"
      sha256 "deebdb318ac62c7055348089fe19628019bdbe99be29686d670d2f267140db5f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
