cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.133"
  sha256 arm:   "36d8278d865d196ad9be8278801f38caa9aa919bc07130ee20a60034d0af47c8",
         intel: "c34282b08e30794929a388154690078aa09ecaf710f8814878a30d3722c0647b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
