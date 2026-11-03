class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2768/magpie-cli-darwin-arm64"
      sha256 "a66081d42204997f2624047ec4bedadce32511d2fc2f7c2fadc9c41901a30432"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2768/magpie-cli-darwin-amd64"
      sha256 "147c01d2f4117e897ba674747423f4cd4331eccecefca9e735b5bcca82428e2b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2768/magpie-cli-linux-arm64"
      sha256 "74e8324b0e9849d4ba940324f5818f264f71c814e44c74b16aa428d985083b22"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2768/magpie-cli-linux-amd64"
      sha256 "a9aece5796289b3ddbad40cfaa777be92762ec733fa2ad667bf66d14c4d107c4"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
