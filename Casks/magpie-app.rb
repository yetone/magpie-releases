cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3690"
  sha256 arm:   "381a81edb42e836b9f197d62f771c665b87091990138b9884192402e228bf321",
         intel: "b88e3d3ffda68240b8b711c7138310c222eaa48ae016dc7745535ed896ff8bad"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
