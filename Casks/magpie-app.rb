cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4221"
  sha256 arm:   "f35250bf4e66d6af7dc8731fba690566f18ec0b0d1549692190af6186e4597b5",
         intel: "54204adf52a339cc66d8170b031d63418484690bc39f6476d6b1eb1ba33b73b5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
