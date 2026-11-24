cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4756"
  sha256 arm:   "ab5bd9abe0fd4dae82760c73a3517ef5c0f23ffaee8d762f4c650df8bc444458",
         intel: "670b142921d15a3b0942085d08e0b21f2a095e916c6dfa33d5da04ec4da5bdc3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
