cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.963"
  sha256 arm:   "ebfd433cd07b83a769369202b2d89c990face1008e7d21554e86db537c17f348",
         intel: "1507400dd7ba238f401baec9c1b9444c723ff101f69d376aeec0ffc3dccbc7db"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
