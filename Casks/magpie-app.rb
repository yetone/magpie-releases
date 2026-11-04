cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2977"
  sha256 arm:   "f330bae3fcbc04c82565c3e52c1a933d4f16831522da6865d7862f29450add5f",
         intel: "f990884d658de9c5de893a19481ecea240d285444d23d7bccec61c6ac9b6bcee"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
