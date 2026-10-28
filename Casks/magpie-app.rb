cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1859"
  sha256 arm:   "0151c81a676a9dced387cdbc8d1d68c9695077358ea8c96b17558ce728a76537",
         intel: "7704f8e994aca5599d1e90a31aaadc7a0c52f99e3b70523f86d4ec0964c963f9"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
