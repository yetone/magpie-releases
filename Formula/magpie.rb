class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3915/magpie-cli-darwin-arm64"
      sha256 "ef6baf556043e79f4e88c290dd9e290a1d6f550eeae81c88911d012b6dece24a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3915/magpie-cli-darwin-amd64"
      sha256 "fed9aa17be3589e3408a4c2215663aaa80a6887532a9f45ecca49299201ad8e5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3915/magpie-cli-linux-arm64"
      sha256 "5d798c45db1c7c265fbdeefb4a0043a7e0847bcb66ddccfe81b97d565265d1a4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3915/magpie-cli-linux-amd64"
      sha256 "9cd58bd55f2083887e46a442951bc284a2fb0ae4caadbc4edb6454c119ac86b3"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
