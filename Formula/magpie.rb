class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2647/magpie-cli-darwin-arm64"
      sha256 "883b5c1e8fc52af83fcdb7e26e8b29a0837ffcee75355c2a8943313ff5366c11"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2647/magpie-cli-darwin-amd64"
      sha256 "aac6f07a608dec74a475eac5bb6228908f546d9003ee496326ac0538481938f0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2647/magpie-cli-linux-arm64"
      sha256 "80428dce9108e59e629037102befe2d936a2bd4e54151d344e9f43145406164d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2647/magpie-cli-linux-amd64"
      sha256 "00f7c5dc93fd3cc1c16386d90d3e5f3015ba9014d236c4e2d7fc2d6c4ad26df2"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
