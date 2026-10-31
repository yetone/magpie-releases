class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2321/magpie-cli-darwin-arm64"
      sha256 "4cb51ffc030f81294bb28e3a070bbf64da6a05286bd7a6a33be8e6a9a0a2b492"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2321/magpie-cli-darwin-amd64"
      sha256 "533bbc8ead7d905bae71c0e9c441fc9f80b49f6e9bb286f4e408ba45cc4b3954"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2321/magpie-cli-linux-arm64"
      sha256 "82a721d798ea7379b20fc5775bcd039e24b746e2ff6602504e9e627c6cf45f30"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2321/magpie-cli-linux-amd64"
      sha256 "7ba5432dbad6c7e2837fca0042f8090ad3028edc0f0fbdffe7feb42a060e748d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
