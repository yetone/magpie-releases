class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2197/magpie-cli-darwin-arm64"
      sha256 "6917251fe04777283b567ab4e290b94871d33c9d9c5a62660ce339f100e7357b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2197/magpie-cli-darwin-amd64"
      sha256 "a377e68db3fb5f15b8b967ef115671b27a745500f36a849d5c0050774238fb01"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2197/magpie-cli-linux-arm64"
      sha256 "a0795fdb4bcf0550e6b26ee96d614a618ea4046c6f5a92b39b1eb21c9d7922a2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2197/magpie-cli-linux-amd64"
      sha256 "af2b117ba05ff0735be775390dde0f9f71e0ca742487a9d6d85875dfa3e29af1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
