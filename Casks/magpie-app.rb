cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3376"
  sha256 arm:   "5e3ca0a73b8a7b1436138bc0c0e87d67cdae002c26c812d0d1c7ccfdbed35b6d",
         intel: "307d68962fd7bcc63929c68bf55207da7f8333f4b7a7d4fa9038e0c52bd02283"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
