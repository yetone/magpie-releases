class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3766/magpie-cli-darwin-arm64"
      sha256 "faca3235c3d210abc03053cb902cab55e68b3dc9a419a6ec7282fee8c7533b12"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3766/magpie-cli-darwin-amd64"
      sha256 "1f33ca24ba28aa24df0bfa0969a047b768ea3b7838bcfbbc01cc13c2b734c66d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3766/magpie-cli-linux-arm64"
      sha256 "64ffad725951c4c323e6a9b21a0affb6ed530e078385b608977c8b90932d17a6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3766/magpie-cli-linux-amd64"
      sha256 "c21d64c689698b848b63f2233a5693e4607e4f3626e2b083cfcae906d013b564"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
