cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2684"
  sha256 arm:   "126147dbe05fce771d7f2ab92b9b45eb023a8b7728a987211cbf2fafdeb5dc2d",
         intel: "85a5625f49749e8771613cd20373a90cc89c443c30d7558b4068bbe811bf2318"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
