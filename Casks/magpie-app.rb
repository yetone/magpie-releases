cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3411"
  sha256 arm:   "204920b7528b810cf062c40947c602d6eb988114ffc4de5f1b9da7dddf16c427",
         intel: "e3b8277157d3fbb1df50845d691bfa0e4ad007073e34b40ce89cf00254a85765"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
