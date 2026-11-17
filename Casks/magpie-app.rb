cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4364"
  sha256 arm:   "186926666011505f6b642a0e4a77018c19763698c1f07e6a5931e604619bfad4",
         intel: "f5f92ea0e65d6615701f73f496920062f719a9961235bcd2f17196bcccc150cc"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
