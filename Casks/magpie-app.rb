cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3224"
  sha256 arm:   "41fcb90218af8b0cb46720cf26ec81ab43e1bd0773d102ebfaa0527e4d6ffdc9",
         intel: "1085af8034bcf07539f9166bb21811db8a00ae68c3aaa66edaf219d133640d45"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
