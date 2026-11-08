class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3305/magpie-cli-darwin-arm64"
      sha256 "39254a948c75b9ff2af189f54950bcbd20380f519c26e24f557b1f9cbdd7643a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3305/magpie-cli-darwin-amd64"
      sha256 "e87353ec6c5e2ee7fe72c861312ae2a849cda130370abc33939e3419516af047"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3305/magpie-cli-linux-arm64"
      sha256 "4f7877f2fc40eac81d9251f7f4c38cf9f81f99d78a24c0057848c9e7f4d3bb02"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3305/magpie-cli-linux-amd64"
      sha256 "8e8921fb7305adac9dceabffc833fd5c78f79446330836a010ab45d7181dbef4"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
