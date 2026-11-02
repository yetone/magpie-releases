class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2749/magpie-cli-darwin-arm64"
      sha256 "0f86334ed1bf7a23088df4166937859b624da8e471f785881e0bd5e3eb57310f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2749/magpie-cli-darwin-amd64"
      sha256 "a071b7f85862fb2acb6b762cddad8a5331ef1ac206bff9941a46eedfeaa5097b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2749/magpie-cli-linux-arm64"
      sha256 "eebf2af9645a5b581a06f7be30d7198e3aaa9c94e5f9323aeec6e620d36b3044"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2749/magpie-cli-linux-amd64"
      sha256 "9f0156aec014905d69c2317c0d215b6b118c24da444d2e5f877cb3016074ab55"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
