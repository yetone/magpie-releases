class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3913/magpie-cli-darwin-arm64"
      sha256 "8b4f7a0dfc816a894034e609547bfbbb5bf1566b60417b425d547629071d9112"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3913/magpie-cli-darwin-amd64"
      sha256 "9688c7233b7f47c68e078bac2bfa055fe2fd3aa9cafe102bf1156522d8ecf65e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3913/magpie-cli-linux-arm64"
      sha256 "fb3d0009b7359a53e89091a64f7be625019b9b2b062e26acd79765970f4b8814"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3913/magpie-cli-linux-amd64"
      sha256 "ae6d4bf42e1a25597db1440f18a1aca1bb8114a3e47669c529dc49b61e20bce1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
