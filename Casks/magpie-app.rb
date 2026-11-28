cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.5031"
  sha256 arm:   "dd631268d427528e0e1a4ba3dff5999cf5379f92d459c81851ae09515014911e",
         intel: "0f7a69fe85f47d6dc116b5dddda8b4034cea0063a75c79eb59b24172d267f38c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
