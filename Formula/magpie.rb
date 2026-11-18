class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4436/magpie-cli-darwin-arm64"
      sha256 "62adce1d907693596c3ab2d00e20f276accd439dc7933b711e771cc3e6456867"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4436/magpie-cli-darwin-amd64"
      sha256 "d74573b7f54541a9829104f0c048ebce934a38ea5aaf296027544b34c29e31b5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4436/magpie-cli-linux-arm64"
      sha256 "660b7227acabc9ba2df6108d65d379adb3e7046bda5f4bc99c9b1a32c1669f9d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4436/magpie-cli-linux-amd64"
      sha256 "b9b45d2b2eba9f3dd982cdf8468c76e34796c5d10e7a3f5e125bb96fab964e72"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
