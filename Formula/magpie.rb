class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2242/magpie-cli-darwin-arm64"
      sha256 "b8852d8c7872a69673f7851d50e13fa254c349695872b898a4b15a985214068f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2242/magpie-cli-darwin-amd64"
      sha256 "323e02fb1fbc099808ed973c26a56a1cc0a4c889bdbf9bac54905ec3144ef4b8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2242/magpie-cli-linux-arm64"
      sha256 "793d56a67824d794b379ee5a978d67801c0215be3b747e3671f2202f3e57cb35"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2242/magpie-cli-linux-amd64"
      sha256 "08455d5bbecc148e77aefdbb12de3bec5901c46478c264d4d1bd98210413504b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
