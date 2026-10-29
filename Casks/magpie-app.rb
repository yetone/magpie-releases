cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2010"
  sha256 arm:   "f7d059332a752e6ebe96a50814ea996ddc87475f0f85dfe559a5b27dc901243c",
         intel: "4bbffa2cc1e79ea5e93fba1957effba8c25e3527ac757567acf5ca311ebce90f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
