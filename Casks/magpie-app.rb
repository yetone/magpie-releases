cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4014"
  sha256 arm:   "94b4f8c00d52a32400fe6fab891ea526fa025498b9619689aa1ce0fea04243f4",
         intel: "ec2c0ce5c943a1625961b734f9074d4bcb2cb6484ac0b5188c7732f948f3ac2d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
