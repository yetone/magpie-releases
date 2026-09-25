class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.84/magpie-cli-darwin-arm64"
      sha256 "6465263a4784f4e1af6ebd60e6e5d71e0d9728e1918108cfb0e524070cda77c2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.84/magpie-cli-darwin-amd64"
      sha256 "2c8345733c79e273a42435d2c7390d0321545382f2d49f94970632d106a30619"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.84/magpie-cli-linux-arm64"
      sha256 "43bfb35fedda34c0d1f04dba7bdfb691d67148779d7ff053df3bf00939765ffe"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.84/magpie-cli-linux-amd64"
      sha256 "2c17977750e02916c33f86d25258314bef4a1919c34f92b73e51ca2526539675"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
