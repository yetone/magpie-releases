cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4191"
  sha256 arm:   "35b1007366a72c11c7f21f8d50a94c104e48437af32f3c2dc4b46d5a0e86fb7a",
         intel: "7b7a58920af64fc1ba30d04435449da105aab49f6cdac439664752b4f030ac20"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
