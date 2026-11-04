class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2967/magpie-cli-darwin-arm64"
      sha256 "8801f918bd76200525ac3cfac6ff74403fcd56ffe3fe13af0c19c04944800d5b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2967/magpie-cli-darwin-amd64"
      sha256 "aa68586c4ce2f1f533069c0cb1de14f3c0ad8bf89a56e0eefceddfe43a908503"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2967/magpie-cli-linux-arm64"
      sha256 "e4bc7a6f2bda099dded5cc973e48f0a09a2463d1bf0160201dcbd759bb91a594"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2967/magpie-cli-linux-amd64"
      sha256 "701adaeb765df8c09e359c0f5d7f247e920152c8255e047c4676bca3a37a746a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
