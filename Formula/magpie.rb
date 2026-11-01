class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2532/magpie-cli-darwin-arm64"
      sha256 "fc75f0da33c383a0abb1167bbccd47efa456090e3d7e855111738584f95ae414"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2532/magpie-cli-darwin-amd64"
      sha256 "5f1722c76391038ef4d1b66e1f79c4f80ae398320d921609435f3b2ed4fcecd0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2532/magpie-cli-linux-arm64"
      sha256 "389beef6ac1f99d43e0cb846593e168e3b7989c685b2ba70db54ab6e6d7bc181"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2532/magpie-cli-linux-amd64"
      sha256 "3fcd9dbafce39f82028e770ec9f8568bf071f48114db697911f0c9470e951be1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
