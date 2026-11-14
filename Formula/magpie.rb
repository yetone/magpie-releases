class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4178/magpie-cli-darwin-arm64"
      sha256 "f968ad536431a9640870d69fd26dc3ce5c46a0f7111dc2c3d8367b91aaff3377"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4178/magpie-cli-darwin-amd64"
      sha256 "2b59cb89d074fca6c987e387e8380ff25fd4596aff730fb6671e353f88025f8d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4178/magpie-cli-linux-arm64"
      sha256 "9e7faaadfaa03bf18375e13c2a7660ca27a2cf76cca246b91a14f0a86299bef1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4178/magpie-cli-linux-amd64"
      sha256 "490c83cd980bc6c06ae53e438ec67b0fa5ea5223e141c8a3b6cf88da635b03ce"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
