class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2638/magpie-cli-darwin-arm64"
      sha256 "aa4dbe8433bf7b108e0d0eabd618655cffbffcb77147561099e12b878e350bdf"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2638/magpie-cli-darwin-amd64"
      sha256 "eab403c85d32cede30829065f02ab344ba5c2371672cb253fd711e9f314ced5f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2638/magpie-cli-linux-arm64"
      sha256 "e17d10a4060ac8821ef4d1d07ac197353684641f2267d1a4c93d7b80ceb3eaf0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2638/magpie-cli-linux-amd64"
      sha256 "e24380650f14a3432f61d7405dc70331f7c170a30ce800781763f9af1c469624"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
